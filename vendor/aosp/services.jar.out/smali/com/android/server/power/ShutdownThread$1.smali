.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$advancedReboot:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread$1;->val$advancedReboot:Z

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    iget-boolean v4, p0, Lcom/android/server/power/ShutdownThread$1;->val$advancedReboot:Z

    if-eqz v4, :cond_1

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "softReboot":Z
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 230
    .local v1, "reasonsList":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 231
    .local v2, "selected":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "actions":[Ljava/lang/String;
    if-ltz v2, :cond_0

    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 235
    aget-object v4, v0, v2

    # setter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    aget-object v4, v0, v2

    const-string v5, "soft_reboot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    # invokes: Lcom/android/server/power/ShutdownThread;->doSoftReboot()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()V

    .line 246
    .end local v0    # "actions":[Ljava/lang/String;
    .end local v1    # "reasonsList":Landroid/widget/ListView;
    .end local v2    # "selected":I
    .end local v3    # "softReboot":Z
    :goto_0
    return-void

    .line 243
    .restart local v1    # "reasonsList":Landroid/widget/ListView;
    .restart local v2    # "selected":I
    .restart local v3    # "softReboot":Z
    :cond_0
    const/4 v4, 0x1

    # setter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$202(Z)Z

    .line 245
    .end local v1    # "reasonsList":Landroid/widget/ListView;
    .end local v2    # "selected":I
    .end local v3    # "softReboot":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$300(Landroid/content/Context;)V

    goto :goto_0
.end method
