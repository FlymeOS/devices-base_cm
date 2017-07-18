.class final Lcom/android/server/power/ShutdownThread$2;
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
    .param p1, "val$advancedReboot"    # Z
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$advancedReboot:Z

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 252
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/ShutdownThread$2;->val$advancedReboot:Z

    if-eqz v4, :cond_1

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "softReboot":Z
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 255
    .local v1, "reasonsList":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 256
    .local v2, "selected":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 258
    const v5, 0x107000d

    .line 257
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "actions":[Ljava/lang/String;
    if-ltz v2, :cond_0

    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 260
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set3(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    aget-object v4, v0, v2

    const-string/jumbo v5, "soft_reboot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap1()V

    .line 263
    return-void

    .line 268
    .end local v0    # "actions":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set2(Z)Z

    .line 270
    .end local v1    # "reasonsList":Landroid/widget/ListView;
    .end local v2    # "selected":I
    .end local v3    # "softReboot":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)V

    .line 251
    return-void
.end method
