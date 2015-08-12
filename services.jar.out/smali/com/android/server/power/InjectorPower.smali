.class public Lcom/android/server/power/InjectorPower;
.super Ljava/lang/Object;
.source "InjectorPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static showShutDownAnimation(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "d":Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;->setCancelable(Z)V

    .line 23
    invoke-virtual {v0}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 24
    new-instance v3, Lcom/android/server/power/InjectorPower$1;

    invoke-direct {v3}, Lcom/android/server/power/InjectorPower$1;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 35
    invoke-virtual {v0}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 36
    .local v2, "mWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 37
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 38
    invoke-virtual {v0}, Lcom/android/server/power/InjectorPower$ShutdownOrientationDialog;->show()V

    .line 39
    return-void
.end method
