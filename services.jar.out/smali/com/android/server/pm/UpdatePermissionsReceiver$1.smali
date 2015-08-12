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
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 23
    iget-object v5, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$i:Landroid/content/Intent;

    const-string v6, "package_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "list":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_1

    .line 33
    :cond_0
    return-object v8

    .line 27
    :cond_1
    if-eqz v3, :cond_0

    .line 28
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 29
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "UpdatePermissionsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v5, p0, Lcom/android/server/pm/UpdatePermissionsReceiver$1;->val$fpms:Landroid/content/pm/FlymePackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/FlymePackageManager;->updatePermissions(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
