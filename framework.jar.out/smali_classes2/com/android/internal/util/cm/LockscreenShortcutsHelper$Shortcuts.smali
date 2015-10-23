.class public final enum Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;
.super Ljava/lang/Enum;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/LockscreenShortcutsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shortcuts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

.field public static final enum LEFT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

.field public static final enum RIGHT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    const-string v1, "LEFT_SHORTCUT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->LEFT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .line 25
    new-instance v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    const-string v1, "RIGHT_SHORTCUT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->RIGHT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    sget-object v1, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->LEFT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->RIGHT_SHORTCUT:Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->$VALUES:[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I

    .line 31
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->$VALUES:[Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    invoke-virtual {v0}, [Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/cm/LockscreenShortcutsHelper$Shortcuts;

    return-object v0
.end method
