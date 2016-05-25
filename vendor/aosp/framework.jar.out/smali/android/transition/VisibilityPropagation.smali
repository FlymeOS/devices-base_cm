.class public abstract Landroid/transition/VisibilityPropagation;
.super Landroid/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibilityPropagation:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibilityPropagation:center"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static getViewCoordinate(Landroid/transition/TransitionValues;I)I
    .locals 4
    .param p0, "values"    # Landroid/transition/TransitionValues;
    .param p1, "coordinateIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 105
    if-nez p0, :cond_0

    move v1, v2

    .line 114
    :goto_0
    return v1

    .line 109
    :cond_0
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibilityPropagation:center"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 110
    .local v0, "coordinates":[I
    if-nez v0, :cond_1

    move v1, v2

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    aget v1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public captureValues(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 45
    .local v1, "view":Landroid/view/View;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 46
    .local v2, "visibility":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 49
    :cond_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibilityPropagation:visibility"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 51
    .local v0, "loc":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 53
    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 54
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 55
    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 56
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibilityPropagation:center"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public getViewVisibility(Landroid/transition/TransitionValues;)I
    .locals 4
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/16 v1, 0x8

    .line 72
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibilityPropagation:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    .local v0, "visibility":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getViewX(Landroid/transition/TransitionValues;)I
    .locals 1
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method

.method public getViewY(Landroid/transition/TransitionValues;)I
    .locals 1
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method
