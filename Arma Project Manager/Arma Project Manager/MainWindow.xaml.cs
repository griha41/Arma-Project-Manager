using System.IO;
using System.Windows;
using System.Windows.Input;
using System.Windows.Forms;
using System.Windows.Controls;
using System.Collections.Generic;
using Arma_Project_Manager.Model;
using Arma_Project_Manager.Code;
using Arma_Project_Manager.Views;
using MessageBox = System.Windows.Forms.MessageBox;

namespace Arma_Project_Manager
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //Main Method
        public MainWindow()
        {
            InitializeComponent();
            Glob.MainWindow = this;
            settingsController = new SettingsController(this);
            settingsController.ReadSettings();
            LoadProjects();
        }

        #region vars
        private SettingsController settingsController;

        private List<Project> ProjectsList = new List<Project>();
        #endregion

        ////////////////////////////
        //UI Control Related Methods
        ////////////////////////////

        //Handles draging of the window 
        private void TitleBar_Click(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        //Handles all button clicks ... just for ease 
        private void ButtonController(object sender, RoutedEventArgs e)
        {
            var senderObject = (System.Windows.Controls.Button)sender;
            switch (senderObject.Name)
            {
                case "CloseBtn":
                    Close();
                    break;
                case "MinimizeBtn":
                    WindowState = WindowState.Minimized;
                    break;
                case "SettingsBtn":
                    SettingsStack.Visibility = Visibility.Visible;
                    SettingsStack.IsEnabled = true;
                    SettingsBtn.IsEnabled = false;
                    SettingsBtn.Visibility = Visibility.Hidden;
                    break;
                case "CloseSettingsBtn":
                    SettingsStack.Visibility = Visibility.Collapsed;
                    SettingsStack.IsEnabled = false;
                    SettingsBtn.IsEnabled = true;
                    SettingsBtn.Visibility = Visibility.Visible;
                    break;
                case "CreateNewProjectBtn":
                    CreateNewProject();
                    break;
                case "DeleteProjectBtn":
                    DeleteProject();
                    break;
                case "ImportProjectBtn":
                    ImportProject();
                    break;
                case "RefreshBtn":
                    LaodProjectTreeView();
                    break;
            }
        }

        //Save Settings when a settings option text box is changed 
        private void SettingTextBoxChanged(object sender, TextChangedEventArgs e)
        {
            settingsController.SaveSettings();
        }

        //Save Settings when a settings option CheckBox is changed 
        private void SettingsCheckChanged(object sender, RoutedEventArgs e)
        {
            settingsController.SaveSettings();
        }

        //Selected Project Changed
        private void ProjectsCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ProjectsCombo.SelectedIndex != -1)
            {
                Glob.SelectedProjectName = ProjectsCombo.SelectedValue.ToString();
                LaodProjectTreeView();
                LoadProjectStats();
            }
        }

        //Load The Project TreeView 
        private void LaodProjectTreeView()
        {
            int index = ProjectsCombo.SelectedIndex;
            if (index != -1)
            {
                ItemProvider itemProvider = new ItemProvider();
                List<Item> items = itemProvider.GetItems(ProjectsList[index].ProjectPath);
                DataContext = items;
                ProjectNameLabel.Text = ProjectsList[index].ProjectName;
                return;
            }
        }

        //Project Tree view selected item changed 
        private void ProjectTreeView_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            switch (ProjectTreeView.SelectedItem.GetType().ToString())
            {
                case "Arma_Project_Manager.Model.BaseDirectoryItem":
                    BaseDirectoryItem bdi = (BaseDirectoryItem)ProjectTreeView.SelectedItem;
                    Glob.SelectedProjectPath = bdi.Path;
                    Glob.SelectedProjectType = Helpers.GetItemType(bdi.Path);
                    break;
                case "Arma_Project_Manager.Model.DirectoryItem":
                    DirectoryItem di = (DirectoryItem)ProjectTreeView.SelectedItem;
                    Glob.SelectedProjectPath = di.Path;
                    Glob.SelectedProjectType = Helpers.GetItemType(di.Path);
                    break;
                case "Arma_Project_Manager.Model.FileItem":
                    FileItem fi = (FileItem)ProjectTreeView.SelectedItem;
                    Glob.SelectedProjectPath = fi.Path;
                    Glob.SelectedProjectType = Helpers.GetItemType(fi.Path);
                    break;
                case "Arma_Project_Manager.Model.MissionDirectoryItem":
                    MissionDirectoryItem mdi = (MissionDirectoryItem)ProjectTreeView.SelectedItem;
                    Glob.SelectedProjectPath = mdi.Path;
                    Glob.SelectedProjectType = Helpers.GetItemType(mdi.Path);
                    break;
                case "Arma_Project_Manager.Model.PBODirectoryItem":
                    PBODirectoryItem pdi = (PBODirectoryItem)ProjectTreeView.SelectedItem;
                    Glob.SelectedProjectPath = pdi.Path;
                    Glob.SelectedProjectType = Helpers.GetItemType(pdi.Path);
                    break;
            }

            
        }


        /////////////////////////////
        //Project Related Methods
        ////////////////////////////

        //Create New Project
        private void CreateNewProject()
        {
            //Bring up the create a new project window .. once made 
            CreateNewProjectWindow cnpw = new CreateNewProjectWindow(this);
            cnpw.Show();
        }

        //Not used currently
        private void ImportProject()
        {
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            fbd.ShowNewFolderButton = false;
            fbd.Description = "Please select the project you wish to import";
            DialogResult dr = fbd.ShowDialog();
            if (dr == System.Windows.Forms.DialogResult.OK)
            {
                //Import 
                string newProjectName = Path.GetFileName(fbd.SelectedPath);
                string newPorjectPath = Path.Combine(Glob.SourcePath, newProjectName);
                if (Directory.Exists(newPorjectPath))
                {
                    MessageBox.Show("A project with this name already exists in your source directory","Error",MessageBoxButtons.OK,MessageBoxIcon.Error);
                    return;
                }
                Directory.CreateDirectory(newPorjectPath);
                Helpers.DirectoryCopy(fbd.SelectedPath, newPorjectPath, true);
                DirectoryInfo selectDirInfo = new DirectoryInfo(fbd.SelectedPath);
                string settingsFile = Path.Combine(selectDirInfo.Parent.ToString(), newProjectName + ".ini");
                MessageBox.Show(settingsFile);
                if (!File.Exists(settingsFile))
                {
                    MessageBox.Show("The Project Settings file could not be found.\n If you want to import that as a later time add it to the projects dir in the working dir of the application", "Projects Settings File Not Found");
                }
                else
                {
                    File.Copy(settingsFile, Path.Combine(Directory.GetCurrentDirectory(), "Projects", newProjectName + ".ini"));
                }
                    
                MessageBox.Show("Project Imported");
                LoadProjects();
            }
        }

        //Load Project Stats
        private void LoadProjectStats()
        {

        }

        //Delete Project
        private void DeleteProject()
        {
            if (ProjectsCombo.SelectedIndex != -1)
            {
                //Well first Bring Up a popup like ohh shit you sure you wonna do this m8
                DialogResult confirmResult = System.Windows.Forms.MessageBox.Show("Are you sure you want to delete this project ?","You sure about that bud ?",MessageBoxButtons.YesNo);
                if (confirmResult == System.Windows.Forms.DialogResult.Yes) //Because wpf .... just fuck you
                {
                    //Delete the project
                    string selectedProjectPath = ProjectsList[ProjectsCombo.SelectedIndex].ProjectPath;
                    Directory.Delete(selectedProjectPath,true);
                    //Delete the project settings file
                    string settingsFile = Path.Combine(Directory.GetCurrentDirectory(), "Projects", ProjectsList[ProjectsCombo.SelectedIndex].ProjectName + ".ini");
                    if (File.Exists(settingsFile))
                        File.Delete(settingsFile);
                    LoadProjects();
                }
            }
        }

        //Load Projects and add them to the projects combo
        public void LoadProjects()
        {
            if (Directory.Exists(Glob.SourcePath))
            {
                ProjectsCombo.Items.Clear();
                ProjectsList.Clear();
                foreach (string project in Directory.GetDirectories(Glob.SourcePath))
                {
                    string projectName = Path.GetFileName(project);
                    ProjectsList.Add(new Project { ProjectName = projectName, ProjectPath = project });
                    ProjectsCombo.Items.Add(projectName);
                }
            }
            return;
        }
    }
}

