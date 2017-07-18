.class public Landroid/app/CustomTransition$Builder;
.super Ljava/lang/Object;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mOverrideOriginal:Z

.field private mStartingX:I

.field private mStartingY:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionClass:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/CustomTransition$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    return v0
.end method

.method static synthetic -get2(Landroid/app/CustomTransition$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    return v0
.end method

.method static synthetic -get3(Landroid/app/CustomTransition$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/CustomTransition$Builder;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get5(Landroid/app/CustomTransition$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    return-object v0
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 163
    invoke-direct {p0, p1}, Landroid/app/CustomTransition$Builder;->unpack(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/app/CustomTransition$Builder;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/CustomTransition$Builder;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "transitionClass"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty class name is not allow!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private unpack(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 233
    const-string/jumbo v0, "android.app:CustomTransition.class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    .line 234
    const-string/jumbo v0, "android.app:CustomTransition.animThumbnail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    .line 235
    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "android.app:CustomTransition.animStartX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    .line 237
    const-string/jumbo v0, "android.app:CustomTransition.animStartY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    .line 239
    :cond_0
    const-string/jumbo v0, "android.app:CustomTransition.animPriority"

    iget-boolean v1, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 240
    const-string/jumbo v0, "android.app:CustomTransition.animStartListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 232
    return-void
.end method


# virtual methods
.method public overridePendingTransition(Landroid/app/Activity;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    return-void
.end method

.method public pack()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "options":Landroid/os/Bundle;
    const-string/jumbo v1, "android.app:CustomTransition.class"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v1, "android.app:CustomTransition.animThumbnail"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    const-string/jumbo v1, "android.app:CustomTransition.animStartX"

    iget v2, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string/jumbo v1, "android.app:CustomTransition.animStartY"

    iget v2, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    :cond_0
    const-string/jumbo v1, "android.app:CustomTransition.animPriority"

    iget-boolean v2, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    iget-object v1, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 227
    const-string/jumbo v1, "android.app:CustomTransition.animStartListener"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    :cond_1
    return-object v0
.end method

.method public final setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/CustomTransition$Builder;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 199
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 200
    move-object v1, p1

    .line 201
    .local v1, "h":Landroid/os/Handler;
    move-object v0, p2

    .line 202
    .local v0, "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    new-instance v2, Landroid/app/CustomTransition$Builder$1;

    invoke-direct {v2, p0, v1, v0}, Landroid/app/CustomTransition$Builder$1;-><init>(Landroid/app/CustomTransition$Builder;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v2, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 214
    .end local v0    # "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v1    # "h":Landroid/os/Handler;
    :cond_0
    return-object p0
.end method

.method public final setOverrideOriginal(Z)Landroid/app/CustomTransition$Builder;
    .locals 0
    .param p1, "overrideOriginal"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 188
    return-object p0
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;II)Landroid/app/CustomTransition$Builder;
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startingX"    # I
    .param p3, "startingY"    # I

    .prologue
    .line 175
    iput-object p1, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    .line 176
    iput p2, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    .line 177
    iput p3, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    .line 178
    return-object p0
.end method
