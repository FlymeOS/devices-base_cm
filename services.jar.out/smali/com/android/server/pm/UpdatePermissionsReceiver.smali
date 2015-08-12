.class public Lcom/android/server/pm/UpdatePermissionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdatePermissionsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdatePermissionsReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-static {p1}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    .line 17
    .local v0, "fpms":Landroid/content/pm/FlymePackageManager;
    move-object v1, p2

    .line 18
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "UpdatePermissionsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-string v2, "android.intent.action.APP_PERMISSION_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    new-instance v2, Lcom/android/server/pm/UpdatePermissionsReceiver$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/pm/UpdatePermissionsReceiver$1;-><init>(Lcom/android/server/pm/UpdatePermissionsReceiver;Landroid/content/Intent;Landroid/content/pm/FlymePackageManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_0
    return-void
.end method
