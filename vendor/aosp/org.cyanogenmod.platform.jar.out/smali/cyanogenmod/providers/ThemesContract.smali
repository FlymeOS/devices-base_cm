.class public Lcyanogenmod/providers/ThemesContract;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/ThemesContract$ThemesColumns;,
        Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;,
        Lcyanogenmod/providers/ThemesContract$PreviewColumns;,
        Lcyanogenmod/providers/ThemesContract$ThemeMixColumns;,
        Lcyanogenmod/providers/ThemesContract$ThemeMixEntryColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cyanogenmod.themes"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "content://com.cyanogenmod.themes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
