.class Lcom/android/server/AlarmManagerService$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 441
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v2, v2, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    iget-object v3, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v3, v3, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v2, v2, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    iget-object v3, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v3, v3, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 444
    goto :goto_0

    .line 448
    :cond_2
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 450
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 451
    goto :goto_0

    .line 455
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 437
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$2;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
