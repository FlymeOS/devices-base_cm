.class Lcom/android/server/notification/ConditionProviders$ConditionRecord;
.super Ljava/lang/Object;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionRecord"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public condition:Landroid/service/notification/Condition;

.field public final id:Landroid/net/Uri;

.field public info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public isAutomatic:Z

.field public isManual:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    .line 609
    iput-object p2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # Lcom/android/server/notification/ConditionProviders$1;

    .prologue
    .line 599
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConditionRecord[id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v1, :cond_0

    const-string v1, ",automatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v1, :cond_1

    const-string v1, ",manual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
