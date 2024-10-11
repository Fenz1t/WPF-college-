using System;
using System.Collections.Generic;

namespace Kurkain.Models;

public partial class Shift
{
    public int Id { get; set; }

    public DateTime StarShift { get; set; }

    public DateTime EndShift { get; set; }

    public string StatusShift { get; set; } = null!;

    public virtual ICollection<ShiftUser> ShiftUsers { get; set; } = new List<ShiftUser>();
}
