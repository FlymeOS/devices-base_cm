.class final Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MzMultiChoiceDelayRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 8313
    iput-object p1, p0, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 8313
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8316
    iget-object v0, p0, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->startMultiChoice()Z

    .line 8317
    iget-object v0, p0, Landroid/widget/AbsListView$MzMultiChoiceDelayRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceDelayRunnable:Ljava/lang/Runnable;

    .line 8318
    return-void
.end method
