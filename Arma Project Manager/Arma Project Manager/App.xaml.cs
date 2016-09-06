using System.Windows;
using Arma_Project_Manager.Views;
using Arma_Project_Manager.Code;

namespace Arma_Project_Manager
{
    public partial class App : Application
    {
        private CreationWindow CreationWindow;
        private ProjectCreator projectCreator = new ProjectCreator();

        private void CreateFolderClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(1);
            CreationWindow.Show();
        }

        private void CreateSQFFileClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(2);
            CreationWindow.Show();
        }

        private void CreateCPPFileClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(3);
            CreationWindow.Show();
        }

        private void CreateHPPFileClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(4);
            CreationWindow.Show();
        }

        private void CreatePBOClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(5);
            CreationWindow.Show();
        }

        private void CreateOtherClick(object sender, RoutedEventArgs e)
        {
            CreationWindow = new CreationWindow(6);
            CreationWindow.Show();
        }

        private void RenameClick(object sender, RoutedEventArgs e)
        {
            projectCreator.Raname();
        }

        private void DeleteClick(object sender, RoutedEventArgs e)
        {
            projectCreator.Delete();
        }
    }
}
