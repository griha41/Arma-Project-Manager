using System.Windows;
using System.Windows.Input;
using System.IO;
using Arma_Project_Manager.Code;
using System;

namespace Arma_Project_Manager.Views
{
    /// <summary>
    /// Interaction logic for CreateNewProjectWindow.xaml
    /// </summary>
    public partial class CreateNewProjectWindow : Window
    {
        private MainWindow main;
        public CreateNewProjectWindow(MainWindow mw)
        {
            InitializeComponent();
            main = mw;
        }

        private void TitleBar_Click (object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void CreateBtn_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(ProjectNameBox.Text))
            {
                string projectPath = Path.Combine(Glob.SourcePath, ProjectNameBox.Text);
                if (!Directory.Exists(projectPath))
                {
                    //Create all the base project folders
                    Directory.CreateDirectory(projectPath);
                    Directory.CreateDirectory(Path.Combine(projectPath, "Server"));
                    Directory.CreateDirectory(Path.Combine(projectPath, "Client"));
                    Directory.CreateDirectory(Path.Combine(projectPath, "Mission"));
                    Directory.CreateDirectory(Path.Combine(projectPath, "Mission", "Config"));

                    //Reload the projects combo and set the new project to the active one
                    main.LoadProjects();
                    main.ProjectsCombo.SelectedIndex = main.ProjectsCombo.Items.IndexOf(ProjectNameBox.Text);

                    //Create a settings file for the new project .... we will store shit here ... if i get around to it
                    string projectsDir = Path.Combine(Directory.GetCurrentDirectory(), "Projects");
                    string projectFile = ProjectNameBox.Text + ".ini";
                    DateTime dt = DateTime.Now;
                    if (!Directory.Exists(projectsDir))
                        Directory.CreateDirectory(projectsDir);
                    IniFile projectSettingsFile = new IniFile(Path.Combine(projectsDir, projectFile));
                    projectSettingsFile.Write("ProjectName", ProjectNameBox.Text, ProjectNameBox.Text);
                    projectSettingsFile.Write("ProjectPath", projectPath, ProjectNameBox.Text);
                    //For some fucked up reason that I cant be bothered looking in to dt.Date also returns the time .... but always 0:0:0 .... because reasons 
                    projectSettingsFile.Write("ProjectCreationDate", string.Format("{0}/{1}/{2}",dt.Day,dt.Month,dt.Year), ProjectNameBox.Text);
                    //ohh and dt.time returns milliseconds up to like 5 decimal places 
                    projectSettingsFile.Write("ProjectCreationTime", string.Format("{0}:{1}:{2}", dt.Hour, dt.Minute, dt.Second), ProjectNameBox.Text);
                    Close();
                }
                else
                {
                    MessageBox.Show("A Project with this name already exists in your source directory", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
