.class public final Landroid/content/pm/ThemeInfo;
.super Landroid/content/pm/BaseThemeInfo;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ThemeInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final META_TAG_AUTHOR:Ljava/lang/String; = "org.cyanogenmod.theme.author"

.field public static final META_TAG_NAME:Ljava/lang/String; = "org.cyanogenmod.theme.name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/content/pm/ThemeInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ThemeInfo$1;-><init>()V

    .line 51
    sput-object v0, Landroid/content/pm/ThemeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/pm/BaseThemeInfo;-><init>()V

    .line 46
    const-string/jumbo v0, "org.cyanogenmod.theme.name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ThemeInfo;->themeId:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "org.cyanogenmod.theme.author"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ThemeInfo;->author:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/pm/BaseThemeInfo;-><init>(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ThemeInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ThemeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
