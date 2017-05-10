namespace CascadingDropdownlistEntityFrameworkAjax.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class State
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public State()
        {
            Cities = new HashSet<City>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int StateId { get; set; }

        public int CountryId { get; set; }

        [Required]
        [StringLength(100)]
        public string StateName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<City> Cities { get; set; }

        public virtual Country Country { get; set; }
    }
}
