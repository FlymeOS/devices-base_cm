.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mChangeBehavior:I


# direct methods
.method static synthetic -get0(Landroid/transition/ChangeText;)I
    .locals 1

    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "android:textchange:text"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "android:textchange:textSelectionStart"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "android:textchange:textSelectionEnd"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 40
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 129
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 130
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:textchange:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:textchange:textSelectionStart"

    .line 134
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:textchange:textSelectionEnd"

    .line 136
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_1

    .line 139
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:textchange:textColor"

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;II)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 307
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 308
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 306
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 150
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    .line 145
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 157
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 159
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 158
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 161
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v6, Landroid/widget/TextView;

    .line 162
    .local v6, "view":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v26, v0

    .line 163
    .local v26, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v22, v0

    .line 164
    .local v22, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "android:textchange:text"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 165
    const-string/jumbo v3, "android:textchange:text"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 166
    .local v5, "startText":Ljava/lang/CharSequence;
    :goto_0
    const-string/jumbo v3, "android:textchange:text"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 167
    const-string/jumbo v3, "android:textchange:text"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 169
    .local v7, "endText":Ljava/lang/CharSequence;
    :goto_1
    instance-of v3, v6, Landroid/widget/EditText;

    if-eqz v3, :cond_9

    .line 170
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 171
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 172
    .local v19, "startSelectionStart":I
    :goto_2
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 173
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 174
    .local v20, "startSelectionEnd":I
    :goto_3
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 175
    const-string/jumbo v3, "android:textchange:textSelectionStart"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 176
    .local v8, "endSelectionStart":I
    :goto_4
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 177
    const-string/jumbo v3, "android:textchange:textSelectionEnd"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 181
    .local v9, "endSelectionEnd":I
    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 184
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 185
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    instance-of v3, v6, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    move-object v3, v6

    .line 187
    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 191
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-nez v3, :cond_a

    .line 192
    const/4 v10, 0x0

    .local v10, "endColor":I
    const/16 v25, 0x0

    .line 193
    .local v25, "startColor":I
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v12, 0x0

    aput v4, v3, v12

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    aput v4, v3, v12

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v21

    .line 194
    .local v21, "anim":Landroid/animation/Animator;
    new-instance v3, Landroid/transition/ChangeText$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    :goto_6
    new-instance v11, Landroid/transition/ChangeText$6;

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v5

    invoke-direct/range {v11 .. v20}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    .line 297
    .local v11, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 301
    return-object v21

    .line 165
    .end local v5    # "startText":Ljava/lang/CharSequence;
    .end local v7    # "endText":Ljava/lang/CharSequence;
    .end local v8    # "endSelectionStart":I
    .end local v9    # "endSelectionEnd":I
    .end local v10    # "endColor":I
    .end local v11    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    .end local v19    # "startSelectionStart":I
    .end local v20    # "startSelectionEnd":I
    .end local v21    # "anim":Landroid/animation/Animator;
    .end local v25    # "startColor":I
    :cond_3
    const-string/jumbo v5, ""

    .restart local v5    # "startText":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 167
    :cond_4
    const-string/jumbo v7, ""

    .restart local v7    # "endText":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 171
    :cond_5
    const/16 v19, -0x1

    .restart local v19    # "startSelectionStart":I
    goto/16 :goto_2

    .line 173
    :cond_6
    move/from16 v20, v19

    .restart local v20    # "startSelectionEnd":I
    goto/16 :goto_3

    .line 175
    :cond_7
    const/4 v8, -0x1

    .restart local v8    # "endSelectionStart":I
    goto/16 :goto_4

    .line 177
    :cond_8
    move v9, v8

    .restart local v9    # "endSelectionEnd":I
    goto :goto_5

    .line 179
    .end local v8    # "endSelectionStart":I
    .end local v9    # "endSelectionEnd":I
    .end local v19    # "startSelectionStart":I
    .end local v20    # "startSelectionEnd":I
    :cond_9
    const/4 v9, -0x1

    .restart local v9    # "endSelectionEnd":I
    const/4 v8, -0x1

    .restart local v8    # "endSelectionStart":I
    const/16 v20, -0x1

    .restart local v20    # "startSelectionEnd":I
    const/16 v19, -0x1

    .restart local v19    # "startSelectionStart":I
    goto :goto_5

    .line 207
    :cond_a
    const-string/jumbo v3, "android:textchange:textColor"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 208
    .restart local v25    # "startColor":I
    const-string/jumbo v3, "android:textchange:textColor"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 210
    .restart local v10    # "endColor":I
    const/16 v24, 0x0

    .local v24, "outAnim":Landroid/animation/ValueAnimator;
    const/16 v23, 0x0

    .line 211
    .local v23, "inAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 213
    :cond_b
    const/16 v3, 0xff

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v24

    .line 214
    .local v24, "outAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/transition/ChangeText$2;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v3, v0, v6, v1}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-instance v3, Landroid/transition/ChangeText$3;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    .end local v24    # "outAnim":Landroid/animation/ValueAnimator;
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 240
    :cond_d
    const/4 v3, 0x0

    const/16 v4, 0xff

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 241
    .local v23, "inAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/transition/ChangeText$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v10}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    new-instance v3, Landroid/transition/ChangeText$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v10}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    .end local v23    # "inAnim":Landroid/animation/ValueAnimator;
    :cond_e
    if-eqz v24, :cond_f

    if-eqz v23, :cond_f

    .line 258
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    .restart local v21    # "anim":Landroid/animation/Animator;
    move-object/from16 v3, v21

    .line 259
    check-cast v3, Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v24, v4, v12

    const/4 v12, 0x1

    aput-object v23, v4, v12

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_6

    .line 260
    .end local v21    # "anim":Landroid/animation/Animator;
    :cond_f
    if-eqz v24, :cond_10

    .line 261
    move-object/from16 v21, v24

    .restart local v21    # "anim":Landroid/animation/Animator;
    goto/16 :goto_6

    .line 264
    .end local v21    # "anim":Landroid/animation/Animator;
    :cond_10
    move-object/from16 v21, v23

    .restart local v21    # "anim":Landroid/animation/Animator;
    goto/16 :goto_6

    .line 303
    .end local v10    # "endColor":I
    .end local v21    # "anim":Landroid/animation/Animator;
    .end local v25    # "startColor":I
    :cond_11
    const/4 v3, 0x0

    return-object v3
.end method

.method public getChangeBehavior()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeBehavior(I)Landroid/transition/ChangeText;
    .locals 1
    .param p1, "changeBehavior"    # I

    .prologue
    .line 107
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 108
    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    .line 110
    :cond_0
    return-object p0
.end method
