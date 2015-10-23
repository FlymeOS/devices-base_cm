.class Lcom/android/internal/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


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
    .line 609
    iput-object p1, p0, Lcom/android/internal/app/AlertController$3;->this$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$3;->val$indicatorUp:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$3;->val$indicatorDown:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/app/AlertController$3;->val$indicatorUp:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$3;->val$indicatorDown:Landroid/view/View;

    # invokes: Lcom/android/internal/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    invoke-static {p1, v0, v1}, Lcom/android/internal/app/AlertController;->access$900(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 614
    return-void
.end method
