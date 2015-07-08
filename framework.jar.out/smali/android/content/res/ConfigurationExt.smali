.class public Landroid/content/res/ConfigurationExt;
.super Ljava/lang/Object;
.source "ConfigurationExt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ConfigurationExt;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ConfigurationExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public themeChanged:I

.field public typefaceChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/content/res/ConfigurationExt$1;

    invoke-direct {v0}, Landroid/content/res/ConfigurationExt$1;-><init>()V

    sput-object v0, Landroid/content/res/ConfigurationExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Landroid/content/res/ConfigurationExt;->setToDefaults()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ConfigurationExt;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/ConfigurationExt;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationExt;->setTo(Landroid/content/res/ConfigurationExt;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/ConfigurationExt$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/ConfigurationExt$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/content/res/ConfigurationExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ConfigurationExt;)I
    .locals 4
    .param p1, "that"    # Landroid/content/res/ConfigurationExt;

    .prologue
    .line 123
    iget v2, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    iget v3, p1, Landroid/content/res/ConfigurationExt;->themeChanged:I

    sub-int v0, v2, v3

    .line 124
    .local v0, "n":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 127
    .end local v0    # "n":I
    .local v1, "n":I
    :goto_0
    return v1

    .line 126
    .end local v1    # "n":I
    .restart local v0    # "n":I
    :cond_0
    iget v2, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    iget v3, p1, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    sub-int v0, v2, v3

    move v1, v0

    .line 127
    .end local v0    # "n":I
    .restart local v1    # "n":I
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Landroid/content/res/ConfigurationExt;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationExt;->compareTo(Landroid/content/res/ConfigurationExt;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/ConfigurationExt;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/ConfigurationExt;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/ConfigurationExt;->themeChanged:I

    iget v2, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 79
    or-int/lit16 v0, v0, 0x4000

    .line 81
    :cond_0
    iget v1, p1, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    iget v2, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    if-eq v1, v2, :cond_1

    .line 82
    or-int/lit16 v0, v0, 0x5000

    .line 84
    :cond_1
    return v0
.end method

.method public equals(Landroid/content/res/ConfigurationExt;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/ConfigurationExt;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-nez p1, :cond_1

    move v0, v1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-eq p1, p0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationExt;->compareTo(Landroid/content/res/ConfigurationExt;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 140
    :try_start_0
    check-cast p1, Landroid/content/res/ConfigurationExt;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationExt;->equals(Landroid/content/res/ConfigurationExt;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x11

    .line 149
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    add-int/lit16 v0, v1, 0x20f

    .line 150
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    add-int v0, v1, v2

    .line 151
    return v0
.end method

.method public hashCode(I)I
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 155
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    add-int p1, v0, v1

    .line 156
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    add-int p1, v0, v1

    .line 157
    return p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    .line 101
    return-void
.end method

.method public setTo(Landroid/content/res/ConfigurationExt;)V
    .locals 1
    .param p1, "o"    # Landroid/content/res/ConfigurationExt;

    .prologue
    .line 34
    iget v0, p1, Landroid/content/res/ConfigurationExt;->themeChanged:I

    iput v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    .line 35
    iget v0, p1, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    iput v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    .line 36
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    .line 22
    iput v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    if-eqz v1, :cond_0

    .line 42
    const-string v1, " themeChanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    iget v1, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    if-eqz v1, :cond_1

    .line 46
    const-string v1, " typefaceChanged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 53
    iget v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    if-eqz v0, :cond_0

    .line 54
    const-string v0, " themeChanged."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    iget v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    if-eqz v0, :cond_1

    .line 58
    const-string v0, " typefaceChanged."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    return-void
.end method

.method public updateFrom(Landroid/content/res/ConfigurationExt;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/ConfigurationExt;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/ConfigurationExt;->themeChanged:I

    iget v2, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    if-eq v1, v2, :cond_0

    .line 66
    or-int/lit16 v0, v0, 0x4000

    .line 67
    iget v1, p1, Landroid/content/res/ConfigurationExt;->themeChanged:I

    iput v1, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    .line 69
    :cond_0
    iget v1, p1, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    iget v2, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    if-eq v1, v2, :cond_1

    .line 70
    or-int/lit16 v0, v0, 0x5000

    .line 71
    iget v1, p1, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    iput v1, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    .line 73
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget v0, p0, Landroid/content/res/ConfigurationExt;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/content/res/ConfigurationExt;->typefaceChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
