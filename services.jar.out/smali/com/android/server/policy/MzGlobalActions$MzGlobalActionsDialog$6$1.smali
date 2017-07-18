.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    sget-object v1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    iget-object v1, v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V

    .line 417
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get3()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 422
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
