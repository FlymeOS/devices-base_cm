.class public Landroid/provider/ThemesContract$Intent;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_THEME_INSTALLED:Ljava/lang/String; = "themescontract.intent.action.THEME_INSTALLED"

.field public static final ACTION_THEME_REMOVED:Ljava/lang/String; = "themescontract.intent.action.THEME_REMOVED"

.field public static final ACTION_THEME_UPDATED:Ljava/lang/String; = "themescontract.intent.action.THEME_UPDATED"

.field public static final URI_SCHEME_PACKAGE:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
