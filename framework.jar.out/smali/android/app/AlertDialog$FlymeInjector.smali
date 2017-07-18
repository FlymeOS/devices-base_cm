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
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlymeAlertDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 1350
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1352
    sget v0, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    return v0

    .line 1354
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1356
    return p1
.end method

.method static setIsThemeDeviceDefaultLight(Landroid/app/AlertDialog;)V
    .locals 2
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/app/AlertDialog;->flymeGetFieldAlert()Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    sget-boolean v1, Landroid/app/AlertDialog$FlymeInjector;->mIsThemeDeviceDefaultLight:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setIsThemeDeviceDefaultLight(Z)V

    .line 1337
    return-void
.end method
