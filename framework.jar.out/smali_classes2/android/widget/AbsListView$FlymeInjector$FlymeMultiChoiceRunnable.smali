.class final Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeMultiChoiceRunnable"
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 8102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8103
    iput-object p1, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;->mAbsListView:Landroid/widget/AbsListView;

    .line 8102
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8108
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8107
    return-void
.end method
