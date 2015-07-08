.class Lcom/android/internal/app/AlertActivity$FlymeInjector;
.super Ljava/lang/Object;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMeizuStyle(Lcom/android/internal/app/AlertActivity;)V
    .locals 1
    .param p0, "alertActivity"    # Lcom/android/internal/app/AlertActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->applyMeizuStyle()V

    .line 106
    return-void
.end method

.method static onAlertContentChanged(Lcom/android/internal/app/AlertActivity;)V
    .locals 1
    .param p0, "alertActivity"    # Lcom/android/internal/app/AlertActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->onAlertContentChanged()V

    .line 110
    return-void
.end method
