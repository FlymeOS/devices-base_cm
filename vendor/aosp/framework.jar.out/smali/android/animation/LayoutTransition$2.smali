.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$anim:Landroid/animation/Animator;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$duration:J

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
    .param p2, "val$anim"    # Landroid/animation/Animator;
    .param p3, "val$changeReason"    # I
    .param p4, "val$duration"    # J
    .param p6, "val$child"    # Landroid/view/View;
    .param p7, "val$parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 879
    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->setupEndValues()V

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    instance-of v12, v12, Landroid/animation/ValueAnimator;

    if-eqz v12, :cond_5

    .line 886
    const/4 v11, 0x0

    .line 887
    .local v11, "valuesDiffer":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    check-cast v10, Landroid/animation/ValueAnimator;

    .line 888
    .local v10, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 889
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v12, v4

    if-ge v2, v12, :cond_4

    .line 890
    aget-object v7, v4, v2

    .line 891
    .local v7, "pvh":Landroid/animation/PropertyValuesHolder;
    iget-object v12, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v12, v12, Landroid/animation/KeyframeSet;

    if-eqz v12, :cond_3

    .line 892
    iget-object v3, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v3, Landroid/animation/KeyframeSet;

    .line 893
    .local v3, "keyframeSet":Landroid/animation/KeyframeSet;
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz v12, :cond_0

    .line 894
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-nez v12, :cond_2

    .line 897
    :cond_0
    const/4 v11, 0x1

    .line 889
    .end local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    .restart local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_2
    iget-object v12, v3, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v12}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 896
    iget-object v13, v3, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v13}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 895
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    .line 899
    .end local v3    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_3
    iget-object v12, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v7, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-interface {v13, v14}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 900
    const/4 v11, 0x1

    goto :goto_1

    .line 903
    .end local v7    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_4
    if-nez v11, :cond_5

    .line 904
    return-void

    .line 908
    .end local v2    # "i":I
    .end local v4    # "oldValues":[Landroid/animation/PropertyValuesHolder;
    .end local v10    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v11    # "valuesDiffer":Z
    :cond_5
    const-wide/16 v8, 0x0

    .line 909
    .local v8, "startDelay":J
    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    packed-switch v12, :pswitch_data_0

    .line 933
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/LayoutTransition$2;->val$duration:J

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 936
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 937
    .local v6, "prevAnimation":Landroid/animation/Animator;
    if-eqz v6, :cond_7

    .line 938
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 940
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 941
    .local v5, "pendingAnimation":Landroid/animation/Animator;
    if-eqz v5, :cond_8

    .line 942
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v12, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get3(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    return-void

    .line 911
    .end local v5    # "pendingAnimation":Landroid/animation/Animator;
    .end local v6    # "prevAnimation":Landroid/animation/Animator;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get4(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    add-long v8, v12, v14

    .line 912
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get6(Landroid/animation/LayoutTransition;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    .line 913
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get5(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v12

    invoke-static {}, Landroid/animation/LayoutTransition;->-get15()Landroid/animation/TimeInterpolator;

    move-result-object v13

    if-eq v12, v13, :cond_6

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get5(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 918
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get8(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    add-long v8, v12, v14

    .line 919
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get10(Landroid/animation/LayoutTransition;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    .line 920
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get9(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v12

    .line 921
    invoke-static {}, Landroid/animation/LayoutTransition;->-get16()Landroid/animation/TimeInterpolator;

    move-result-object v13

    .line 920
    if-eq v12, v13, :cond_6

    .line 922
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get9(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 926
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get7(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v14}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    add-long v8, v12, v14

    .line 927
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get18(Landroid/animation/LayoutTransition;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get12(Landroid/animation/LayoutTransition;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v12, v14, v15}, Landroid/animation/LayoutTransition;->-set0(Landroid/animation/LayoutTransition;J)J

    .line 928
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v12}, Landroid/animation/LayoutTransition;->-get11(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v12

    invoke-static {}, Landroid/animation/LayoutTransition;->-get17()Landroid/animation/TimeInterpolator;

    move-result-object v13

    if-eq v12, v13, :cond_6

    .line 929
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v13}, Landroid/animation/LayoutTransition;->-get11(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
