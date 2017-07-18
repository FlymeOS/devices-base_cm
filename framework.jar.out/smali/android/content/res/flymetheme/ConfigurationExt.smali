.class public Landroid/content/res/flymetheme/ConfigurationExt;
.super Ljava/lang/Object;
.source "ConfigurationExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/ConfigurationExt$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/flymetheme/ConfigurationExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fontChanged:I

.field public themeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt$1;

    invoke-direct {v0}, Landroid/content/res/flymetheme/ConfigurationExt$1;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/ConfigurationExt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Landroid/content/res/flymetheme/ConfigurationExt;->setExtToDefault()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/res/flymetheme/ConfigurationExt;)V
    .locals 1
    .param p1, "ext"    # Landroid/content/res/flymetheme/ConfigurationExt;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget v0, p1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 26
    iget v0, p1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/flymetheme/ConfigurationExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/flymetheme/ConfigurationExt;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/flymetheme/ConfigurationExt;)I
    .locals 3
    .param p1, "that"    # Landroid/content/res/flymetheme/ConfigurationExt;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "n":I
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iget v2, p1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    sub-int v0, v1, v2

    .line 83
    if-eqz v0, :cond_0

    return v0

    .line 84
    :cond_0
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iget v2, p1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    sub-int v0, v1, v2

    .line 85
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/flymetheme/ConfigurationExt;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/flymetheme/ConfigurationExt;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iget v2, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 72
    const/16 v0, 0x4000

    .line 74
    :cond_0
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iget v2, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eq v1, v2, :cond_1

    .line 75
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 77
    :cond_1
    return v0
.end method

.method public fireFontChange()V
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 133
    return-void
.end method

.method public fireThemeChange()V
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 129
    return-void
.end method

.method public hashCode(I)I
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 108
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    add-int p1, v0, v1

    .line 109
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    add-int p1, v0, v1

    .line 110
    return p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 113
    return-void
.end method

.method public setExtToDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 104
    iput v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, " themeChanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eqz v1, :cond_1

    .line 50
    const-string/jumbo v1, " fontChanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/flymetheme/ConfigurationExt;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/flymetheme/ConfigurationExt;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iget v2, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 59
    const/16 v0, 0x4000

    .line 60
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 62
    :cond_0
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iget v2, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eq v1, v2, :cond_1

    .line 63
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 64
    iget v1, p1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v1, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 66
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 125
    iget v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
