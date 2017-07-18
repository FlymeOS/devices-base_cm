.class public Landroid/graphics/Atlas;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$Type;,
        Landroid/graphics/Atlas$Entry;,
        Landroid/graphics/Atlas$Policy;,
        Landroid/graphics/Atlas$SlicePolicy;
    }
.end annotation


# static fields
.field private static synthetic -android_graphics_Atlas$TypeSwitchesValues:[I = null

.field public static final FLAG_ADD_PADDING:I = 0x2

.field public static final FLAG_DEFAULTS:I = 0x2


# instance fields
.field private final mPolicy:Landroid/graphics/Atlas$Policy;


# direct methods
.method private static synthetic -getandroid_graphics_Atlas$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceLongAxis:Landroid/graphics/Atlas$Type;

    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMaxArea:Landroid/graphics/Atlas$Type;

    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceMinArea:Landroid/graphics/Atlas$Type;

    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Atlas$Type;->SliceShortAxis:Landroid/graphics/Atlas$Type;

    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/graphics/Atlas;->-android_graphics_Atlas$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;II)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    .line 100
    return-void
.end method

.method private static findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;
    .locals 3
    .param p0, "type"    # Landroid/graphics/Atlas$Type;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-static {}, Landroid/graphics/Atlas;->-getandroid_graphics_Atlas$TypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    return-object v2

    .line 140
    :pswitch_0
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    .line 141
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;

    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;)V

    .line 140
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object v0

    .line 143
    :pswitch_1
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    .line 144
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;

    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;)V

    .line 143
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object v0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    .line 147
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;

    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;)V

    .line 146
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object v0

    .line 149
    :pswitch_3
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    .line 150
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;

    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;)V

    .line 149
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object v0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public pack(II)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    .line 133
    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Atlas$Entry;

    .end local p3    # "entry":Landroid/graphics/Atlas$Entry;
    invoke-direct {p3}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 134
    .restart local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :cond_0
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Atlas$Policy;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    return-object v0
.end method
