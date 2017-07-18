.class final Lcom/android/server/power/Notifier$FlymeInjector;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static notifyAccessControlGotoSleep(Lcom/android/server/power/Notifier;I)V
    .locals 3
    .param p0, "notifier"    # Lcom/android/server/power/Notifier;
    .param p1, "why"    # I

    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "access_control"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/security/AccessControlManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1, p1}, Lmeizu/security/AccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_1
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
