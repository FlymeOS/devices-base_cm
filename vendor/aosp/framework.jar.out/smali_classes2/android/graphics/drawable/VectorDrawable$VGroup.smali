.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field private mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1028
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1029
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1030
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1031
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1032
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1033
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1034
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1038
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1084
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .locals 8
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1026
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1028
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1029
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1030
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1031
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1032
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1033
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1034
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1038
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1041
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1044
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1045
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1046
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1047
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1048
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1049
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1050
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1051
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1052
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1053
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1054
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1055
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1060
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1061
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1062
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1063
    .local v1, "copyChild":Ljava/lang/Object;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 1064
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1065
    .local v2, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6, v2, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v2    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1067
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .line 1068
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v5, :cond_3

    .line 1069
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .line 1075
    .restart local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_2
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1077
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1070
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_3
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v5, :cond_4

    .line 1071
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    .restart local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_2

    .line 1073
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1081
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_5
    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1019
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/VectorDrawable$VGroup;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1019
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    return v0
.end method

.method static synthetic access$600(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$700(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private updateLocalMatrix()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1141
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1142
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1143
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1144
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1145
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1146
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1103
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1108
    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1109
    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1110
    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1111
    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1112
    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1113
    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1114
    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1116
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1118
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1121
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1122
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1129
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-nez v1, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1134
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 1177
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1229
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1095
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1097
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1098
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1099
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 1169
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1170
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    .line 1171
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1173
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 1182
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1183
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    .line 1184
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1186
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 1156
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1157
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    .line 1158
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1160
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 1195
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1196
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    .line 1197
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1199
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 1208
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1209
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    .line 1210
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1212
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1
    .param p1, "translateX"    # F

    .prologue
    .line 1221
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1222
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    .line 1223
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1225
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1
    .param p1, "translateY"    # F

    .prologue
    .line 1234
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1235
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    .line 1236
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    .line 1238
    :cond_0
    return-void
.end method
