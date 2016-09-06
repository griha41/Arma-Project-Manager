using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Windows.Forms;
using Arma_Project_Manager.Views;

namespace Arma_Project_Manager.Code
{
    class ProjectCreator
    {
        public void Raname()
        {
            RenameWindow renameWindow = new RenameWindow();
            renameWindow.Show();
        }

        public void Delete()
        {
            DialogResult dr = MessageBox.Show("Are you sure you want to delete this item ?", "You Sure Bruh ?", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                if (Glob.SelectedProjectType == "Dir")
                    Directory.Delete(Glob.SelectedProjectPath, true);
                else
                    File.Delete(Glob.SelectedProjectPath);
            }
        }
    }
}
