.class Lcom/android/internal/app/AlertController$6;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$indicatorDown:Landroid/view/View;

.field final synthetic val$indicatorUp:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$6;->val$indicatorUp:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$6;->val$indicatorDown:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/app/AlertController$6;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1100(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/AlertController$6;->val$indicatorUp:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$6;->val$indicatorDown:Landroid/view/View;

    # invokes: Lcom/android/internal/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/AlertController;->access$900(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 643
    return-void
.end method
