using System.IO;
namespace Arma_Project_Manager.Code
{
    class SettingsController
    {
        private IniFile settingsFile = new IniFile();
        private MainWindow main;
        public SettingsController(MainWindow main)
        {
            this.main = main;
        }

        public void SaveSettings()
        {
            //Paths
            settingsFile.Write("SourcePath", main.SourcePathBox.Text);
            settingsFile.Write("OutputPath", main.OutputPathBox.Text);
            settingsFile.Write("MakePBOPath", main.MakePBOPathBox.Text);

            //Compile Options
            settingsFile.Write("RemoveSingleLineComments", main.RemoveSingleLineCommentsCheck.IsChecked.ToString());
            settingsFile.Write("RemoveMultiLineComments", main.RemoveMultiLineCommentsCheck.IsChecked.ToString());
            settingsFile.Write("ObfuscateMissionFile", main.ObfuscateMissionCheck.IsChecked.ToString());
        }

        public void ReadSettings()
        {
            if (File.Exists(Path.Combine(Directory.GetCurrentDirectory(), "Arma Project Manager.ini")))
            {
                //Read Path Settings
                Glob.SourcePath = settingsFile.Read("SourcePath");
                Glob.OutputPath = settingsFile.Read("OutputPath");
                Glob.MakePBOPath = settingsFile.Read("MakePBOPath");

                //Read Compiler Settings
                Glob.RemoveSingleLineComments = bool.Parse(settingsFile.Read("RemoveSingleLineComments"));
                Glob.RemoveMultiLineComments = bool.Parse(settingsFile.Read("RemoveMultiLineComments"));
                Glob.ObfuscateMission = bool.Parse(settingsFile.Read("ObfuscateMissionFile"));

                ApplySettings();
            }
        }

        private void ApplySettings()
        {
            //Apply Paths settings
            main.SourcePathBox.Text = Glob.SourcePath;
            main.OutputPathBox.Text = Glob.OutputPath;
            main.MakePBOPathBox.Text = Glob.MakePBOPath;

            //Apply compiler settings
            main.RemoveSingleLineCommentsCheck.IsChecked = Glob.RemoveSingleLineComments;
            main.RemoveMultiLineCommentsCheck.IsChecked = Glob.RemoveMultiLineComments;
            main.ObfuscateMissionCheck.IsChecked = Glob.ObfuscateMission;
        }
    }
}
