.class Landroid/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BackStackRecord;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$hiddenFragmentViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Landroid/app/Fragment;

.field final synthetic val$overallTransition:Landroid/transition/Transition;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$state:Landroid/app/BackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BackStackRecord;
    .param p2, "val$container"    # Landroid/view/View;
    .param p3, "val$inFragment"    # Landroid/app/Fragment;
    .param p5, "val$overallTransition"    # Landroid/transition/Transition;
    .param p6, "val$sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p7, "val$state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p8, "val$isBack"    # Z
    .param p10, "val$outFragment"    # Landroid/app/Fragment;
    .param p11, "val$enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 1091
    .local p4, "val$hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "val$sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p12, "val$enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iput-object p2, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    iput-object p3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iput-object p4, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    iput-object p6, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iput-object p7, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iput-boolean p8, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    iput-object p9, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    iput-object p11, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iput-object p12, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1097
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mContainerId:I

    .line 1099
    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$overallTransition:Landroid/transition/Transition;

    .line 1098
    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap2(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    .line 1102
    :cond_0
    const/4 v5, 0x0

    .line 1103
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-boolean v2, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    invoke-static {v0, v1, v2, v3}, Landroid/app/BackStackRecord;->-wrap0(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 1105
    .local v5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1106
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    .line 1107
    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$sharedElementTargets:Ljava/util/ArrayList;

    .line 1106
    invoke-static {v0, v1, v5, v2}, Landroid/app/BackStackRecord;->-wrap5(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1109
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    invoke-static {v0, v5, v1}, Landroid/app/BackStackRecord;->-wrap3(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    .line 1111
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    iget-object v3, p0, Landroid/app/BackStackRecord$1;->val$outFragment:Landroid/app/Fragment;

    iget-boolean v4, p0, Landroid/app/BackStackRecord$1;->val$isBack:Z

    invoke-static/range {v0 .. v5}, Landroid/app/BackStackRecord;->-wrap1(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    .line 1115
    .end local v5    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_1
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_4

    .line 1116
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1117
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$inFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 1118
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1119
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1120
    if-eqz v5, :cond_2

    .line 1121
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1123
    :cond_2
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1127
    :cond_3
    iget-object v0, p0, Landroid/app/BackStackRecord$1;->this$0:Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/BackStackRecord$1;->val$enterTransition:Landroid/transition/Transition;

    iget-object v2, p0, Landroid/app/BackStackRecord$1;->val$state:Landroid/app/BackStackRecord$TransitionState;

    invoke-static {v0, v1, v2}, Landroid/app/BackStackRecord;->-wrap4(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    .line 1129
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
