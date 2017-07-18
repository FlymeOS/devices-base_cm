.class public Lcyanogenmod/providers/ThemesContract$ThemeMixEntryColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeMixEntryColumns"
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "component_id"

.field public static final COMPONENT_TYPE:Ljava/lang/String; = "component_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_INSTALLED:Ljava/lang/String; = "installed"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final THEME_MIX_ID:Ljava/lang/String; = "theme_mix_id"

.field public static final THEME_NAME:Ljava/lang/String; = "theme_name"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 752
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "theme_mix_entries"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 751
    sput-object v0, Lcyanogenmod/providers/ThemesContract$ThemeMixEntryColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 746
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
