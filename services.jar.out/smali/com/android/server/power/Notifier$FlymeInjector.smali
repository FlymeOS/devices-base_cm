.class Lcom/android/server/power/Notifier$FlymeInjector;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mMzAccessControlManager:Lmeizu/security/AccessControlManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mzNotifyAccessControlGotoSleep(Lcom/android/server/power/Notifier;I)V
    .locals 2
    .param p0, "notifier"    # Lcom/android/server/power/Notifier;
    .param p1, "why"    # I

    .prologue
    .line 532
    :try_start_0
    sget-object v0, Lcom/android/server/power/Notifier$FlymeInjector;->mMzAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "access_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    sput-object v0, Lcom/android/server/power/Notifier$FlymeInjector;->mMzAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 535
    :cond_0
    sget-object v0, Lcom/android/server/power/Notifier$FlymeInjector;->mMzAccessControlManager:Lmeizu/security/AccessControlManager;

    if-eqz v0, :cond_1

    .line 536
    sget-object v0, Lcom/android/server/power/Notifier$FlymeInjector;->mMzAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method
