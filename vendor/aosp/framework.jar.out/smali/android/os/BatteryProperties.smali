.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerDockAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public dockBatteryHealth:I

.field public dockBatteryLevel:I

.field public dockBatteryPresent:Z

.field public dockBatteryStatus:I

.field public dockBatterySupported:Z

.field public dockBatteryTechnology:Ljava/lang/String;

.field public dockBatteryTemperature:I

.field public dockBatteryVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    .line 88
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    .line 107
    :goto_7
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v0, v2

    .line 78
    goto :goto_2

    :cond_3
    move v0, v2

    .line 81
    goto :goto_3

    :cond_4
    move v0, v2

    .line 87
    goto :goto_4

    :cond_5
    move v0, v2

    .line 89
    goto :goto_5

    :cond_6
    move v1, v2

    .line 92
    goto :goto_6

    .line 98
    :cond_7
    iput-boolean v2, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 99
    iput v1, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 100
    iput v1, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 101
    iput-boolean v2, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 102
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 103
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 104
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/BatteryProperties$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    .prologue
    .line 48
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 49
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 50
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 51
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 52
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 53
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 54
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 55
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 56
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 57
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    .line 60
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 61
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 62
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 63
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 64
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 65
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 66
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 67
    iget-object v0, p1, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_0

    .line 123
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    if-eqz v0, :cond_7

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 110
    goto :goto_0

    :cond_2
    move v0, v2

    .line 111
    goto :goto_1

    :cond_3
    move v0, v2

    .line 112
    goto :goto_2

    :cond_4
    move v0, v2

    .line 115
    goto :goto_3

    :cond_5
    move v0, v2

    .line 121
    goto :goto_4

    :cond_6
    move v0, v2

    .line 123
    goto :goto_5

    :cond_7
    move v1, v2

    .line 126
    goto :goto_6
.end method
