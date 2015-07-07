.class final Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingEvent"
.end annotation


# instance fields
.field event:Landroid/view/KeyEvent;

.field handled:Z

.field next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field policyFlags:I

.field sequence:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 3049
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3058
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 3060
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    .line 3062
    :cond_0
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 3063
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    .line 3064
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    .line 3065
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    .line 3066
    return-void
.end method
