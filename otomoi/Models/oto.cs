namespace otomoi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("oto")]
    public partial class oto
    {
        [Key]
        public int ma { get; set; }

        [Required]
        [StringLength(50)]
        public string masanpham { get; set; }

        [Required]
        [StringLength(50)]
        public string ten { get; set; }

        public int hangsanxuatma { get; set; }

        public int loaixema { get; set; }

        [StringLength(50)]
        public string anh { get; set; }

        [Required]
        [StringLength(50)]
        public string ghichu { get; set; }

        [Required]
        [StringLength(50)]
        public string dongco { get; set; }

        [Required]
        [StringLength(50)]
        public string hopso { get; set; }

        [Required]
        [StringLength(50)]
        public string congsuat { get; set; }

        [Required]
        [StringLength(50)]
        public string momen { get; set; }

        public int? gia { get; set; }

        [Column(TypeName = "date")]
        public DateTime? thoidiemramat { get; set; }

        public virtual hangxe hangxe { get; set; }

        public virtual loaixe loaixe { get; set; }
    }
}
