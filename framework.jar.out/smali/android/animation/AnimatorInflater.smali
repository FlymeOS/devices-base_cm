.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v12, 0x0

    .line 559
    .local v12, "anim":Landroid/animation/Animator;
    const/4 v14, 0x0

    .line 563
    .local v14, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 566
    .local v15, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_7

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_7

    .line 568
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_0

    .line 572
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 574
    .local v19, "name":Ljava/lang/String;
    const-string/jumbo v4, "objectAnimator"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 595
    :goto_1
    if-eqz p4, :cond_0

    .line 596
    if-nez v14, :cond_2

    .line 597
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .restart local v14    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    :cond_3
    const-string v4, "animator"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 577
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v12

    goto :goto_1

    .line 578
    :cond_4
    const-string/jumbo v4, "set"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 579
    new-instance v12, Landroid/animation/AnimatorSet;

    .end local v12    # "anim":Landroid/animation/Animator;
    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 581
    .restart local v12    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    .line 582
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 586
    .local v11, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 587
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "ordering":I
    move-object v8, v12

    .line 588
    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 590
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 584
    .end local v9    # "ordering":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .restart local v11    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .line 592
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 602
    .end local v19    # "name":Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_9

    if-eqz v14, :cond_9

    .line 603
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v13, v4, [Landroid/animation/Animator;

    .line 604
    .local v13, "animsArray":[Landroid/animation/Animator;
    const/16 v17, 0x0

    .line 605
    .local v17, "index":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 606
    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .local v18, "index":I
    aput-object v11, v13, v17

    move/from16 v17, v18

    .line 607
    .end local v18    # "index":I
    .restart local v17    # "index":I
    goto :goto_3

    .line 608
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_8
    if-nez p5, :cond_a

    .line 609
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 614
    .end local v13    # "animsArray":[Landroid/animation/Animator;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "index":I
    :cond_9
    :goto_4
    return-object v12

    .line 611
    .restart local v13    # "animsArray":[Landroid/animation/Animator;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "index":I
    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    .line 208
    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 209
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    return-object v7

    .line 216
    :pswitch_1
    const/4 v1, 0x0

    .line 217
    .local v1, "animator":Landroid/animation/Animator;
    const-string v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 219
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    .line 220
    .local v8, "states":[I
    const/4 v5, 0x0

    .line 221
    .local v5, "stateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 222
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 223
    .local v2, "attrName":I
    const v10, 0x10101cd

    if-ne v2, v10, :cond_1

    .line 224
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .line 225
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    move v5, v6

    .line 221
    .end local v0    # "animId":I
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    .line 227
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    goto :goto_2

    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    goto :goto_3

    .line 232
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    .line 237
    :cond_4
    if-nez v1, :cond_5

    .line 238
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string v11, "animation state item must have a valid animation"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 241
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 684
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 685
    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 686
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v1

    return v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v4

    .line 110
    .local v4, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    invoke-virtual {v4, v10, v11, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 111
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 149
    .end local v2    # "animator":Landroid/animation/Animator;
    .local v3, "animator":Landroid/animation/Animator;
    :goto_0
    return-object v3

    .line 119
    .end local v3    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :cond_0
    const/4 v7, 0x0

    .line 121
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 122
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_1

    .line 124
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    .line 125
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    .line 126
    .local v5, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v5, :cond_1

    .line 130
    int-to-long v10, p2

    invoke-virtual {v4, v10, v11, p1, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Landroid/content/res/ConstantState;)V

    .line 132
    invoke-virtual {v5, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v5    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move-object v3, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .restart local v3    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 136
    .end local v3    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v6

    .line 137
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 140
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 141
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v9

    .line 142
    :catch_1
    move-exception v6

    .line 143
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 642
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    .line 643
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 649
    :goto_0
    if-eqz p3, :cond_0

    .line 650
    if-eqz p1, :cond_6

    .line 651
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 656
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 659
    :cond_0
    if-nez p3, :cond_1

    .line 660
    new-instance p3, Landroid/animation/ValueAnimator;

    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 662
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 664
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    .line 666
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 667
    .local v3, "resID":I
    if-lez v3, :cond_3

    .line 668
    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 669
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 670
    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .line 673
    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 676
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 677
    if-eqz v1, :cond_4

    .line 678
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 680
    :cond_4
    return-object p3

    .line 645
    .end local v3    # "resID":I
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 654
    :cond_6
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_1
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 622
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    .line 624
    return-object v0
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 156
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v4

    .line 158
    .local v4, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 159
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    invoke-virtual {v4, v12, v13, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    .line 160
    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 196
    .end local v2    # "animator":Landroid/animation/StateListAnimator;
    .local v3, "animator":Landroid/animation/StateListAnimator;
    :goto_0
    return-object v3

    .line 163
    .end local v3    # "animator":Landroid/animation/StateListAnimator;
    .restart local v2    # "animator":Landroid/animation/StateListAnimator;
    :cond_0
    const/4 v7, 0x0

    .line 165
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 166
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_1

    .line 168
    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    .line 169
    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v5

    .line 171
    .local v5, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v5, :cond_1

    .line 172
    int-to-long v12, p1

    invoke-virtual {v4, v12, v13, v10, v5}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Landroid/content/res/ConstantState;)V

    .line 174
    invoke-virtual {v5, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/animation/StateListAnimator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v5    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    .line 196
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move-object v3, v2

    .end local v2    # "animator":Landroid/animation/StateListAnimator;
    .restart local v3    # "animator":Landroid/animation/StateListAnimator;
    goto :goto_0

    .line 178
    .end local v3    # "animator":Landroid/animation/StateListAnimator;
    .restart local v2    # "animator":Landroid/animation/StateListAnimator;
    :catch_0
    move-exception v6

    .line 179
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 184
    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 185
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v6    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_3

    .line 196
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v11

    .line 186
    :catch_1
    move-exception v6

    .line 187
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 19
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .prologue
    .line 309
    const/4 v4, 0x1

    const/16 v5, 0x12c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v12, v4

    .line 311
    .local v12, "duration":J
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v14, v4

    .line 313
    .local v14, "startDelay":J
    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 316
    .local v18, "valueType":I
    const/4 v11, 0x0

    .line 318
    .local v11, "evaluator":Landroid/animation/TypeEvaluator;
    if-nez v18, :cond_4

    const/4 v6, 0x1

    .line 320
    .local v6, "getFloats":Z
    :goto_0
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 321
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-eqz v16, :cond_5

    const/4 v7, 0x1

    .line 322
    .local v7, "hasFrom":Z
    :goto_1
    if-eqz v7, :cond_6

    move-object/from16 v0, v16

    iget v8, v0, Landroid/util/TypedValue;->type:I

    .line 323
    .local v8, "fromType":I
    :goto_2
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    .line 324
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v17, :cond_7

    const/4 v9, 0x1

    .line 325
    .local v9, "hasTo":Z
    :goto_3
    if-eqz v9, :cond_8

    move-object/from16 v0, v17

    iget v10, v0, Landroid/util/TypedValue;->type:I

    .line 329
    .local v10, "toType":I
    :goto_4
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_9

    .line 330
    invoke-static/range {p0 .. p1}, Landroid/animation/AnimatorInflater;->setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;

    move-result-object v11

    .line 344
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 347
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 351
    :cond_0
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 356
    :cond_1
    if-eqz v11, :cond_2

    .line 357
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 360
    :cond_2
    if-eqz p2, :cond_3

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    .line 363
    :cond_3
    return-void

    .line 318
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "fromType":I
    .end local v9    # "hasTo":Z
    .end local v10    # "toType":I
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 321
    .restart local v6    # "getFloats":Z
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 322
    .restart local v7    # "hasFrom":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 324
    .restart local v8    # "fromType":I
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 325
    .restart local v9    # "hasTo":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 333
    .restart local v10    # "toType":I
    :cond_9
    if-eqz v7, :cond_a

    const/16 v4, 0x1c

    if-lt v8, v4, :cond_a

    const/16 v4, 0x1f

    if-le v8, v4, :cond_b

    :cond_a
    if-eqz v9, :cond_c

    const/16 v4, 0x1c

    if-lt v10, v4, :cond_c

    const/16 v4, 0x1f

    if-gt v10, v4, :cond_c

    .line 338
    :cond_b
    const/4 v6, 0x0

    .line 339
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v11

    :cond_c
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 341
    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V

    goto :goto_5
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "toString":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    .line 378
    .local v2, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v3

    .line 380
    .local v3, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-eqz v2, :cond_3

    .line 381
    if-eqz v3, :cond_0

    .line 382
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 383
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 384
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 388
    :cond_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 390
    :cond_1
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .line 400
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_2
    :goto_0
    return-object v0

    .line 391
    :cond_3
    if-eqz v3, :cond_2

    .line 392
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 393
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v3}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_0
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    .prologue
    .line 414
    move-object/from16 v3, p0

    check-cast v3, Landroid/animation/ObjectAnimator;

    .line 415
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 420
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 422
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 426
    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 429
    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .line 430
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    .line 431
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    .line 434
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    .line 435
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    .line 436
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .line 441
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    .line 442
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    .line 443
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    .line 444
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 446
    :cond_1
    if-eqz v8, :cond_2

    .line 447
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 449
    :cond_2
    if-nez v9, :cond_4

    .line 450
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 462
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    return-void

    .line 438
    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    .line 439
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    .line 451
    .restart local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_4
    if-nez v11, :cond_5

    .line 452
    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 454
    :cond_5
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .line 458
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 6
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .prologue
    .line 478
    const/4 v1, 0x5

    .line 479
    .local v1, "valueFromIndex":I
    const/4 v3, 0x6

    .line 480
    .local v3, "valueToIndex":I
    if-eqz p2, :cond_6

    .line 483
    if-eqz p3, :cond_4

    .line 484
    const/4 v4, 0x5

    if-ne p4, v4, :cond_1

    .line 485
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 489
    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    .line 490
    const/4 v4, 0x5

    if-ne p6, v4, :cond_2

    .line 491
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 495
    .local v2, "valueTo":F
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 546
    .end local v0    # "valueFrom":F
    .end local v2    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    .line 487
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .restart local v0    # "valueFrom":F
    goto :goto_0

    .line 493
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_1

    .line 497
    .end local v2    # "valueTo":F
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 500
    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v4, 0x5

    if-ne p6, v4, :cond_5

    .line 501
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 505
    .restart local v2    # "valueTo":F
    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .line 503
    .end local v2    # "valueTo":F
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .restart local v2    # "valueTo":F
    goto :goto_3

    .line 510
    .end local v2    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    .line 511
    const/4 v4, 0x5

    if-ne p4, v4, :cond_7

    .line 512
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v0, v4

    .line 519
    .local v0, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    .line 520
    const/4 v4, 0x5

    if-ne p6, v4, :cond_9

    .line 521
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 528
    .local v2, "valueTo":I
    :goto_5
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .line 513
    .end local v0    # "valueFrom":I
    .end local v2    # "valueTo":I
    :cond_7
    const/16 v4, 0x1c

    if-lt p4, v4, :cond_8

    const/16 v4, 0x1f

    if-gt p4, v4, :cond_8

    .line 515
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_4

    .line 517
    .end local v0    # "valueFrom":I
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .restart local v0    # "valueFrom":I
    goto :goto_4

    .line 522
    :cond_9
    const/16 v4, 0x1c

    if-lt p6, v4, :cond_a

    const/16 v4, 0x1f

    if-gt p6, v4, :cond_a

    .line 524
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_5

    .line 526
    .end local v2    # "valueTo":I
    :cond_a
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_5

    .line 530
    .end local v2    # "valueTo":I
    :cond_b
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_2

    .line 533
    .end local v0    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    .line 534
    const/4 v4, 0x5

    if-ne p6, v4, :cond_d

    .line 535
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 542
    .restart local v2    # "valueTo":I
    :goto_6
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_2

    .line 536
    .end local v2    # "valueTo":I
    :cond_d
    const/16 v4, 0x1c

    if-lt p6, v4, :cond_e

    const/16 v4, 0x1f

    if-gt p6, v4, :cond_e

    .line 538
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_6

    .line 540
    .end local v2    # "valueTo":I
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .restart local v2    # "valueTo":I
    goto :goto_6
.end method
