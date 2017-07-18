.class final Lcom/android/internal/app/AlertController$FlymeInjector;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtFields(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 1222
    new-instance v0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;-><init>(Lcom/android/internal/app/AlertController$AlertParams;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    .line 1221
    return-void
.end method

.method static initFlymeExtFields(Lcom/android/internal/app/AlertController;Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p0, "alertController"    # Lcom/android/internal/app/AlertController;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 1218
    new-instance v0, Lcom/android/internal/app/AlertControllerExt;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/app/AlertControllerExt;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lcom/android/internal/app/AlertController;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    .line 1217
    return-void
.end method

.method static setFlymeStyleParams(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->setFlymeStyleParams(Lcom/android/internal/app/AlertController;)V

    .line 1225
    return-void
.end method

.method static setupListView(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->setupListView(Lcom/android/internal/app/AlertController;)V

    .line 1229
    return-void
.end method

.method static syncViewAndData(Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p0, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setView(Landroid/view/View;)V

    .line 1235
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setMessage(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setListView(Landroid/widget/ListView;)V

    .line 1238
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1239
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->setupView()V

    .line 1233
    return-void
.end method
