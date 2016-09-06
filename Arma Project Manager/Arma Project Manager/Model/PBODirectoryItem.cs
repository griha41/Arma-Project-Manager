using System.Collections.Generic;

namespace Arma_Project_Manager.Model
{
    class PBODirectoryItem : Item 
    {
        public List<Item> Items { get; set; }
        public PBODirectoryItem()
        {
            Items = new List<Item>();
        }
    }
}
