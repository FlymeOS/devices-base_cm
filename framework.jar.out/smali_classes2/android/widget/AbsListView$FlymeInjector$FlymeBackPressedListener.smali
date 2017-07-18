.class final Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ActionMode$BackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeBackPressedListener"
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 8081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8082
    iput-object p1, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;->mAbsListView:Landroid/widget/AbsListView;

    .line 8081
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8088
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 8089
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 8090
    iget-object v0, p0, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8091
    const/4 v0, 0x1

    return v0

    .line 8093
    :cond_0
    return v1
.end method
