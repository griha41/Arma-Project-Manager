using System.Windows;
using System.Windows.Input;
using Arma_Project_Manager.Code;
using System.IO;

namespace Arma_Project_Manager.Views
{
    /// <summary>
    /// Interaction logic for RenameWindow.xaml
    /// </summary>
    public partial class RenameWindow : Window
    {
        public RenameWindow()
        {
            InitializeComponent();
        }

        //Handles draging of the window 
        private void TitleBar_Click(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void RenameBtn_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(NameBox.Text))
            {
                string type = Helpers.GetItemType(Glob.SelectedProjectPath);
                if (type == "Dir")
                {
                    string ParentPath = Helpers.BuildParentPath(Glob.SelectedProjectPath);
                    if (!Directory.Exists(Path.Combine(ParentPath,NameBox.Text)))
                    {
                        Directory.Move(Glob.SelectedProjectPath, Path.Combine(ParentPath, NameBox.Text));
                    }
                    else
                    {
                        MessageBox.Show("A Directory with this name already exists", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    string ParentPath = Helpers.BuildParentPath(Glob.SelectedProjectPath);
                    string extension = Path.GetExtension(Glob.SelectedProjectPath);
                    if (!File.Exists(Path.Combine(ParentPath, NameBox.Text + extension)))
                    {
                        File.Move(Glob.SelectedProjectPath, Path.Combine(ParentPath, NameBox.Text + extension));
                    }
                    else
                    {
                        MessageBox.Show("A Directory with this name already exists", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            else
            {
                MessageBox.Show("No name was provided", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
