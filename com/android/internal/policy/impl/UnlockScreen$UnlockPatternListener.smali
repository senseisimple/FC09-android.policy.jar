.class Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "UnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_12

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 534
    :cond_12
    return-void
.end method

.method public onPatternCleared()V
    .registers 1

    .prologue
    .line 526
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 538
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    const-string v3, ""

    #setter for: Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->access$502(Lcom/android/internal/policy/impl/UnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 542
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportPhoneUnlocked()V

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 566
    :goto_36
    return-void

    .line 545
    :cond_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_49

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 548
    :cond_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 549
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6e

    .line 550
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$708(Lcom/android/internal/policy/impl/UnlockScreen;)I

    .line 551
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$808(Lcom/android/internal/policy/impl/UnlockScreen;)I

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedPatternAttempt()V

    .line 554
    :cond_6e
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$800(Lcom/android/internal/policy/impl/UnlockScreen;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_87

    .line 555
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 556
    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$900(Lcom/android/internal/policy/impl/UnlockScreen;J)V

    goto :goto_36

    .line 560
    .end local v0           #deadline:J
    :cond_87
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10403a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/UnlockScreen;->mInstructions:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->access$502(Lcom/android/internal/policy/impl/UnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #calls: Lcom/android/internal/policy/impl/UnlockScreen;->updateStatusLines()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 562
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UnlockScreen;->access$300(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_36
.end method

.method public onPatternStart()V
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$300(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method
