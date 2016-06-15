.class final Landroid/app/AlertDialog$FlymeInjector;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mIsThemeDeviceDefaultLight:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlymeAlertDialogTheme(Landroid/content/Context;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1238
    const/4 v6, 0x5

    if-ne p1, v6, :cond_1

    .line 1239
    sput-boolean v9, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1240
    sget p1, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    .line 1258
    .end local p1    # "resid":I
    :cond_0
    :goto_0
    return p1

    .line 1242
    .restart local p1    # "resid":I
    :cond_1
    sput-boolean v5, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1244
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->isColorTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1245
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1246
    .local v4, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1247
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    .line 1248
    .local v3, "themeResId":I
    const/4 v1, 0x0

    .line 1249
    .local v1, "isFlymeRes":Z
    const/high16 v6, -0x1000000

    and-int/2addr v6, v3

    invoke-static {}, Landroid/app/LoadedApk$FlymeInjector;->getFlymePackageId()I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    if-ne v6, v7, :cond_2

    .line 1250
    const/4 v1, 0x1

    .line 1252
    :cond_2
    const-string v6, "android"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const-string v2, "flyme"

    .line 1253
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "mzAlertDialogTheme"

    const-string v8, "attr"

    invoke-virtual {v6, v7, v8, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1254
    .local v0, "id":I
    if-lez v0, :cond_5

    .line 1255
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1256
    iget p1, v4, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_5
    move p1, v5

    .line 1258
    goto :goto_0
.end method

.method static setIsThemeDeviceDefaultLight(Landroid/app/AlertDialog;)V
    .locals 2
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1227
    invoke-virtual {p0}, Landroid/app/AlertDialog;->flymeGetFieldAlert()Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    sget-boolean v1, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setIsThemeDeviceDefaultLight(Z)V

    .line 1229
    return-void
.end method
