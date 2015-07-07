.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TextProgressBar.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final CHRONOMETER_ID:I = 0x1020014

.field static final PROGRESSBAR_ID:I = 0x102000d

.field public static final TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mChronometerFollow:Z

.field mChronometerGravity:I

.field mDuration:I

.field mDurationBase:J

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 64
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    .local v0, "childId":I
    const v1, 0x1020014

    if-ne v0, v1, :cond_2

    instance-of v1, p1, Landroid/widget/Chronometer;

    if-eqz v1, :cond_2

    .line 87
    check-cast p1, Landroid/widget/Chronometer;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 91
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->getGravity()I

    move-result v1

    const v2, 0x800007

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    const v1, 0x102000d

    if-ne v0, v1, :cond_0

    instance-of v1, p1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Landroid/widget/ProgressBar;

    .end local p1    # "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_1
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 12
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .prologue
    .line 133
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v9, :cond_0

    .line 134
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 140
    .local v4, "now":J
    iget-wide v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    cmp-long v9, v4, v10

    if-ltz v9, :cond_1

    .line 141
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->stop()V

    .line 145
    :cond_1
    iget-wide v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    sub-long/2addr v10, v4

    long-to-int v6, v10

    .line 146
    .local v6, "remaining":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v10, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    iget-boolean v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    if-eqz v9, :cond_4

    .line 153
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v9

    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    sub-int v1, v9, v10

    .line 155
    .local v1, "contentWidth":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    mul-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getMax()I

    move-result v10

    div-int/2addr v9, v10

    iget v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int v2, v9, v10

    .line 159
    .local v2, "leadingEdge":I
    const/4 v0, 0x0

    .line 160
    .local v0, "adjustLeft":I
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->getWidth()I

    move-result v8

    .line 161
    .local v8, "textWidth":I
    iget v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const v10, 0x800005

    if-ne v9, v10, :cond_5

    .line 162
    neg-int v0, v8

    .line 168
    :cond_2
    :goto_0
    add-int/2addr v2, v0

    .line 169
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v9, v1, v9

    sub-int v7, v9, v8

    .line 170
    .local v7, "rightLimit":I
    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v2, v9, :cond_6

    .line 171
    iget v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 176
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 180
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->requestLayout()V

    .line 183
    .end local v0    # "adjustLeft":I
    .end local v1    # "contentWidth":I
    .end local v2    # "leadingEdge":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "rightLimit":I
    .end local v8    # "textWidth":I
    :cond_4
    return-void

    .line 163
    .restart local v0    # "adjustLeft":I
    .restart local v1    # "contentWidth":I
    .restart local v2    # "leadingEdge":I
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "textWidth":I
    :cond_5
    iget v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 164
    div-int/lit8 v9, v8, 0x2

    neg-int v0, v9

    goto :goto_0

    .line 172
    .restart local v7    # "rightLimit":I
    :cond_6
    if-le v2, v7, :cond_3

    .line 173
    move v2, v7

    goto :goto_1
.end method

.method public setDurationBase(J)V
    .locals 3
    .param p1, "durationBase"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 122
    iget v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    if-gtz v0, :cond_2

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 126
    return-void
.end method
