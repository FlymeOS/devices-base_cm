.class final Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
.super Ljava/lang/Object;
.source "EdgeGestureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x10

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public cachedTimeMillis:J

.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field public next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field public policyFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    .line 144
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 120
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 121
    iput p2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->cachedTimeMillis:J

    .line 123
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;I)Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "policyFlags"    # I

    .prologue
    .line 103
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    sget v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_0

    .line 106
    sget v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    .line 107
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPool:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 108
    .local v0, "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    sput-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPool:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 109
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->mInPool:Z

    .line 114
    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->initialize(Landroid/view/MotionEvent;I)V

    .line 115
    monitor-exit v2

    return-object v0

    .line 112
    .end local v0    # "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :cond_0
    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;-><init>()V

    .restart local v0    # "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    goto :goto_0

    .line 116
    .end local v0    # "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 126
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->clear()V

    .line 131
    sget v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 132
    sget v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPoolSize:I

    .line 133
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPool:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 134
    sput-object p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->sPool:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->mInPool:Z

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method
