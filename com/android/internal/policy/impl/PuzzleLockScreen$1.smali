.class Lcom/android/internal/policy/impl/PuzzleLockScreen$1;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .registers 8
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 603
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 604
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 605
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    const-string v9, "lockscreen_sounds_enabled"

    const-string v6, "PuzzleLockScreen"

    .line 608
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 609
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 610
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnlockClock;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMatchLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 611
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnlockClock;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 612
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/UnlockClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/UnlockClock;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x8a

    sub-int/2addr v3, v4

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 613
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedEventLayout2:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEventMatchLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 615
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 617
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5d6

    .line 801
    :cond_7c
    :goto_7c
    return v5

    .line 620
    :pswitch_7d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->locale_es:Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es_US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 621
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080388

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 625
    :goto_9b
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x108038b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 627
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 628
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 629
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v0, v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 630
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1602(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    goto :goto_7c

    .line 623
    :cond_e0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080387

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_9b

    .line 634
    :pswitch_ed
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1702(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 635
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 636
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMatchLayoutTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_15f

    .line 637
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 639
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 640
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 641
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 642
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 645
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 649
    :cond_15f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreationOrientation:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_35b

    .line 650
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-eqz v2, :cond_178

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-nez v2, :cond_211

    .line 651
    :cond_178
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEventMatchLayoutTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_1fe

    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 653
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 655
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-nez v2, :cond_1df

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-lez v2, :cond_1df

    .line 657
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and One event Missed Call"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 663
    :cond_1ba
    :goto_1ba
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 664
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 665
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 666
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 659
    :cond_1df
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-nez v2, :cond_1ba

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-lez v2, :cond_1ba

    .line 660
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and One event Missed Text"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    goto :goto_1ba

    .line 670
    :cond_1fe
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 673
    :cond_211
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_268

    .line 674
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 675
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 677
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 678
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 679
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and Missed Call"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 681
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 682
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 683
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 686
    :cond_268
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2bf

    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 688
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 690
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 691
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 692
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and Missed Text"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 694
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 695
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 700
    :cond_2bf
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_2e2

    .line 701
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 703
    :cond_2e2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ne v2, v3, :cond_303

    .line 704
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 706
    :cond_303
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_33d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_330
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    :cond_33d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_330

    .line 712
    :cond_35b
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-lez v2, :cond_40f

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-nez v2, :cond_40f

    .line 713
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_3c2

    .line 714
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 715
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 717
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 718
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 719
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and One event Missed Call on landscape"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 721
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 722
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 723
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 727
    :cond_3c2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_3e5

    .line 728
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 730
    :cond_3e5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_408

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_3fd
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    :cond_408
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    goto :goto_3fd

    .line 733
    :cond_40f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-nez v2, :cond_4c3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    if-lez v2, :cond_4c3

    .line 734
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_476

    .line 735
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 736
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 738
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 739
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 740
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and One event Missed Text on landscape"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 742
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 743
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 744
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 748
    :cond_476
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_499

    .line 749
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 751
    :cond_499
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_4bc

    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    :goto_4b1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    :cond_4bc
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    goto :goto_4b1

    .line 755
    :cond_4c3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallMatchLayoutLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-le v2, v3, :cond_51a

    .line 756
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 757
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 759
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 760
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 761
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and Missed Call on landscape"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 763
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 764
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 765
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 768
    :cond_51a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedTxtMatchLayoutRight:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_571

    .line 769
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 770
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 772
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 773
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    #calls: Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 774
    const-string v2, "PuzzleLockScreen"

    const-string v2, "Unlock and Missed Text on landscape"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 776
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v2, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7c

    .line 777
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setSoundEffect(I)V

    .line 778
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->playSoundEffect(I)V

    goto/16 :goto_7c

    .line 782
    :cond_571
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    if-ge v2, v3, :cond_594

    .line 783
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 785
    :cond_594
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 795
    :pswitch_5a7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #setter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 796
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockArrow:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x1080386

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 797
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockButton:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x108038a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 798
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;->moveTo(II)V

    goto/16 :goto_7c

    .line 617
    nop

    :pswitch_data_5d6
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_5a7
        :pswitch_ed
    .end packed-switch
.end method
