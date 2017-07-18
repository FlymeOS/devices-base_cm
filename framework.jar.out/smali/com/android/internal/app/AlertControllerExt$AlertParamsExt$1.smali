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
.field final synthetic this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

.field final synthetic val$alert:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;
    .param p2, "val$alert"    # Lcom/android/internal/app/AlertController;
    .param p3, "val$listView"    # Landroid/widget/ListView;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

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
    .line 747
    const/4 v0, 0x1

    .line 748
    .local v0, "enabled":Z
    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 749
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->-get0(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v2

    .line 749
    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->-get0(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isThemeLight()Z

    move-result v2

    .line 749
    if-eqz v2, :cond_0

    .line 752
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    .line 754
    .end local v0    # "enabled":Z
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
    .line 734
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->-get0(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$alert:Lcom/android/internal/app/AlertController;

    iget-object v2, v2, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v2}, Lcom/android/internal/app/AlertControllerExt;->-get4(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->isListViewItemEnable(Landroid/widget/ListAdapter;I)Z

    move-result v0

    .line 740
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->this$1:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->-get0(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;->val$alert:Lcom/android/internal/app/AlertController;

    iget-object v1, v1, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->-get4(Lcom/android/internal/app/AlertControllerExt;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 733
    :cond_0
    return-void
.end method
