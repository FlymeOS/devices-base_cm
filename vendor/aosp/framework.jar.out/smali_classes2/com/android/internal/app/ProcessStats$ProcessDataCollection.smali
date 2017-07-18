.class public final Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDataCollection"
.end annotation


# instance fields
.field public avgPss:J

.field public avgUss:J

.field public maxPss:J

.field public maxUss:J

.field final memStates:[I

.field public minPss:J

.field public minUss:J

.field public numPss:J

.field final procStates:[I

.field final screenStates:[I

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I
    .param p3, "_procStates"    # [I

    .prologue
    .line 3738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3739
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    .line 3740
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    .line 3741
    iput-object p3, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    .line 3738
    return-void
.end method


# virtual methods
.method print(Ljava/io/PrintWriter;JZ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "overallTime"    # J
    .param p4, "full"    # Z

    .prologue
    const-wide/16 v4, 0x400

    .line 3745
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 3746
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3748
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v0, v0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 3749
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3750
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3751
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3752
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3753
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3754
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3755
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3756
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3758
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3759
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3760
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    mul-long/2addr v0, v4

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 3762
    if-eqz p4, :cond_1

    .line 3763
    const-string/jumbo v0, " over "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 3766
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3744
    :cond_2
    return-void
.end method
