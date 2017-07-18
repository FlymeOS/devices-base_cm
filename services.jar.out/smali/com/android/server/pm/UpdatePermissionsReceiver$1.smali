.class Lcom/android/server/pm/UpdatePermissionsReceiver$1;
.super Landroid/os/AsyncTask;
.source "UpdatePermissionsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UpdatePermissionsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdatePermissionsReceiver;

.field final synthetic val$fpms:Landroid/content/pm/FlymePackageManager;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdatePermissionsReceiver;Landroid/content/Intent;Landroid/content/pm/FlymePackageManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UpdatePermissionsReceiver;
    .param p2, "val$i"    # Landroid/content/Intent;
    .param p3, "val$fpms"    # Landroid/content/pm/FlymePackageManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->this$0:Lcom/android/server/pm/UpdatePermissionsReceiver;

    iput-object p2, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$i:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$fpms:Landroid/content/pm/FlymePackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 23
    iget-object v3, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$i:Landroid/content/Intent;

    const-string/jumbo v4, "package_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 25
    :cond_0
    return-object v7

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 29
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "UpdatePermissionsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v4, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$fpms:Landroid/content/pm/FlymePackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/FlymePackageManager;->updatePermissions(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    return-object v7
.end method
