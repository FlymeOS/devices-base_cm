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
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static notifyAccessControlGotoSleep(Lcom/android/server/power/Notifier;I)V
    .locals 3
    .param p0, "notifier"    # Lcom/android/server/power/Notifier;
    .param p1, "reason"    # I

    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "access_control"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/security/AccessControlManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    if-eqz v1, :cond_1

    .line 567
    const/4 v0, 0x2

    .line 568
    .local v0, "why":I
    packed-switch p1, :pswitch_data_0

    .line 576
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v1, v0}, Lmeizu/security/AccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0    # "why":I
    :cond_1
    :goto_1
    return-void

    .line 570
    .restart local v0    # "why":I
    :pswitch_0
    const/4 v0, 0x1

    .line 571
    goto :goto_0

    .line 573
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 578
    .end local v0    # "why":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
