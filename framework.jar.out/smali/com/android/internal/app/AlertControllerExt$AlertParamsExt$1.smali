.class Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->setupListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

.field final synthetic val$alert:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    iput-object p2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$alert:Lcom/android/internal/app/AlertController;

    iput-object p3, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isListViewItemEnable(Landroid/widget/ListAdapter;I)Z
    .locals 3
    .param p1, "mAdapter"    # Landroid/widget/ListAdapter;
    .param p2, "position"    # I

    .prologue
    .line 736
    const/4 v0, 0x1

    .line 737
    .local v0, "enabled":Z
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 738
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->access$700(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->access$700(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isThemeLight()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    .line 743
    :cond_0
    return v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->access$700(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$alert:Lcom/android/internal/app/AlertController;

    iget-object v2, v2, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt;->access$600(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->isListViewItemEnable(Landroid/widget/ListAdapter;I)Z

    move-result v0

    .line 729
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$0:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->access$700(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$alert:Lcom/android/internal/app/AlertController;

    iget-object v1, v1, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->access$600(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    :cond_0
    return-void
.end method
