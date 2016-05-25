.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 38
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    .line 39
    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 40
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    .line 41
    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)J
.end method

.method private update()V
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->destroyFilter(J)V

    .line 103
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:J

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 112
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 114
    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 115
    .local v0, "other":Landroid/graphics/PorterDuffColorFilter;
    iget v3, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v4, v0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, v0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return v0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 69
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    .line 70
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    .line 71
    return-void
.end method

.method public setMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 97
    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    .line 99
    return-void
.end method
