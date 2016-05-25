.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3056
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3057
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userHandle:I

    if-ne v1, v2, :cond_0

    .line 3058
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 3060
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userHandle:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3061
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3066
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 3063
    :catch_0
    move-exception v1

    goto :goto_0
.end method
