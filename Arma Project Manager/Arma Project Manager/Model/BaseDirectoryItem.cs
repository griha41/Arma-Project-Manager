using System.Collections.Generic;

namespace Arma_Project_Manager.Model
{
    class BaseDirectoryItem : Item 
    {
        public List<Item> Items { get; set; }
        public BaseDirectoryItem()
        {
            Items = new List<Item>();
        }
    }
}
