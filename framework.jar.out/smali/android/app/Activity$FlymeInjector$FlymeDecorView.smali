.class final Landroid/app/Activity$FlymeInjector$FlymeDecorView;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDecorView"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEvent:[Landroid/view/MotionEvent;

.field private mLength:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # [Landroid/view/MotionEvent;

    .prologue
    .line 7347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7348
    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mActivity:Landroid/app/Activity;

    .line 7349
    iput-object p2, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    .line 7347
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7354
    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7355
    .local v0, "decorView":Landroid/view/View;
    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    array-length v2, v3

    .line 7356
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 7357
    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7353
    :cond_0
    return-void
.end method
