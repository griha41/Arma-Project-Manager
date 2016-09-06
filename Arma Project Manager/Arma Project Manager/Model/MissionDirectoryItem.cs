using System.Collections.Generic;

namespace Arma_Project_Manager.Model
{
    class MissionDirectoryItem : Item 
    {
        public List<Item> Items { get; set; }
        public MissionDirectoryItem()
        {
            Items = new List<Item>();
        }
    }
}
