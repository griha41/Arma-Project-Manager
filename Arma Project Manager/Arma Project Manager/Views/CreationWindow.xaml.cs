using System.Windows;
using System.Windows.Input;

namespace Arma_Project_Manager.Views
{
    /// <summary>
    /// Interaction logic for CreationWindow.xaml
    /// </summary>
    public partial class CreationWindow : Window
    {

        public CreationWindow(int type)
        {
            InitializeComponent();
            /*
             Types 
             1 - Folder
             2 - SFQFile
             3 - CPPFile
             4 - HPPFile
             5 - PBO 
             6 - Other
             */
            switch (type)
            {
                case 1:
                    BoxTitle.Text = "Create Folder";
                    CreationTypeText.Text = "Folder Name";
                    break;
                case 2:
                    BoxTitle.Text = "Create SQF File";
                    CreationTypeText.Text = "SQF File Name";
                    break;
                case 3:
                    BoxTitle.Text = "Create CPP File";
                    CreationTypeText.Text = "CPP File Name";
                    break;
                case 4:
                    BoxTitle.Text = "Create HPP File";
                    CreationTypeText.Text = "HPP File Name";
                    break;
                case 5:
                    BoxTitle.Text = "Create PBO";
                    CreationTypeText.Text = "PBO Name";
                    break;
                case 6:
                    BoxTitle.Text = "Create";
                    CreationTypeText.Text = "Name (you will need to include a file extension like .txt)";
                    break;
            }
        }

        //Handles draging of the window 
        private void TitleBar_Click(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        //Cancel
        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        //Create
        private void CreateBtn_Click(object sender, RoutedEventArgs e)
        {
            
        }
    }
}
